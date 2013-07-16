LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= json_spirit
LOCAL_SRC_FILES:= json_spirit_reader.cpp \
json_spirit_value.cpp \
json_spirit_writer.cpp
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

LOCAL_WHOLE_STATIC_LIBRARIES := boost_system boost_thread
$(call import-module,Boost/static/android/thread) \
$(call import-module,Boost/static/android/system)

LOCAL_CFLAGS += -fexceptions

include $(BUILD_STATIC_LIBRARY)