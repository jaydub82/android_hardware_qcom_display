#libs to be built for QCOM targets only

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
    ifeq ($(BOARD_USES_LEGACY_QCOM),true)
        display-hals := libgralloc-legacy libcopybit
    else
        display-hals := libqcomui libtilerenderer
        display-hals += libhwcomposer liboverlay libgralloc libgenlock libcopybit
    endif
        include $(call all-named-subdir-makefiles,$(display-hals))
endif

