
#define LOG_TAG "NXCameraBoardSensor"
#include <linux/videodev2.h>
#include <linux/v4l2-mediabus.h>

#include <utils/Log.h>
#include <nxp-v4l2.h>
#include <nx_camera_board.h>

#include <S5K4ECGX.h>

namespace android {

extern "C" {
int get_board_number_of_cameras() {
    return 1;
}
}

class NXCameraBoardSensor *frontSensor = NULL;
class NXCameraBoardSensor *backSensor = NULL;

NXCameraBoardSensor *get_board_camera_sensor(int id) {
    NXCameraBoardSensor *sensor = NULL;

    if (id == 0) {
        if (!backSensor) {
            backSensor = new S5K4ECGX(nxp_v4l2_sensor0);
            if (!backSensor)
                ALOGE("%s: cannot create BACK Sensor", __func__);
        }
        sensor = backSensor;
    }
    else {
        ALOGE("INVALID ID: %d", id);
    };
    return sensor;
}


NXCameraBoardSensor *get_board_camera_sensor_by_v4l2_id(int v4l2_id) {
    switch (v4l2_id) {
    case nxp_v4l2_sensor0:
        return backSensor;
    default: 
        ALOGE("%s: invalid v4l2 id(%d)", __func__, v4l2_id);
        return NULL;
    }
}

uint32_t get_board_preview_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_decimator0;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

uint32_t get_board_capture_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_clipper0;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

uint32_t get_board_record_v4l2_id(int cameraId)
{
    switch (cameraId) {
    case 0:
        return nxp_v4l2_clipper0;
    default:
        ALOGE("%s: invalid cameraId %d", __func__, cameraId);
        return 0;
    }
}

bool get_board_camera_is_mipi(uint32_t v4l2_sensorId)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return true;
    default:
        return false;
    }
}

uint32_t get_board_preview_skip_frame(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return 2;
    default:
        return 0;
    }
}

uint32_t get_board_capture_skip_frame(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return 2;
    default:
        return 0;
    }
}

void set_board_preview_mode(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return;
    }
}

void set_board_capture_mode(int v4l2_sensorId, int width, int height)
{
    switch (v4l2_sensorId) {
    case nxp_v4l2_sensor0:
        return;
    }
}

uint32_t get_board_camera_orientation(int cameraId)
{
    switch (cameraId) {
    case 0:
        return 90;
    default:
        return 0;
    }
}

}
