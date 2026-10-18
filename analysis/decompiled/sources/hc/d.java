package hc;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: BigfootOperationCode.java */
/* JADX INFO: loaded from: classes.dex */
public enum d {
    SERVO_MOVE(0),
    SERVO_PRESET_SET(1),
    SERVO_PRESET_GET(2),
    SERVO_POSITION_SET(3),
    SERVO_POSITION_GET(4),
    SERVO_MOVE_COMPLETE_EVENT(5),
    /* JADX INFO: Fake field, exist only in values array */
    SERVO_SET_MAX_SEGS(6),
    /* JADX INFO: Fake field, exist only in values array */
    SERVO_SET_SEG_DIST(7),
    /* JADX INFO: Fake field, exist only in values array */
    SERVO_GET_PARAMS(8),
    FIRMWARE_AVAILABLE(10),
    FIRMWARE_PULL(11),
    /* JADX INFO: Fake field, exist only in values array */
    FIRMWARE_DOWNLOAD_STATUS_GET(12),
    FIRMWARE_DOWNLOAD_COMPLETE(13),
    FIRMWARE_UPGRADE(14),
    FIRMWARE_TRANSMIT_SEGMENT(15),
    FIRMWARE_RETRANSMIT_SEGMENT(16),
    FIRMWARE_STOP_TRANSFER(17),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(18),
    FIRMWARE_GET_IMAGE_STATS(19),
    IDENTIFY(20),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(21),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(22),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(23),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(30),
    /* JADX INFO: Fake field, exist only in values array */
    GET_LOG_COUNT(31),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(32),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(33),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(34),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(35),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(40),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(41),
    RTC_TIME_SET_UTC(42),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(43),
    SERIAL_NUMBER_GET(50),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(70),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(71),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(79),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(80),
    BATTERY_CHARGER_STATE_GET(81),
    TOGGLE_FPS(82),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(83),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(84),
    FPS_CALIBRATE(85),
    /* JADX INFO: Fake field, exist only in values array */
    FPS_ISSUE_RESET(86),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(87),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(90),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(100),
    START_AUTH_KEY_GENERATION(110),
    EXCHANGE_PUBLIC_KEY(111),
    START_AUTHENTICATION(112),
    AUTHENTICATION_CHALLENGE(113),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(120),
    SYSTEM_STATS_GET(121),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(122),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(123),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(124),
    SET_LED_BASE(130),
    GET_LED_BASE(131),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(140),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(141),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(142),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(143),
    SESSION_START(150),
    SESSION_STOP(151),
    SESSION_ENDED(152),
    SESSION_GET_ID_LIST(153),
    SESSION_GET_INFO(154),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(155),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(156),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(157),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(158),
    SESSION_DATA_METRICS_NOTIFICATION(159),
    SESSION_DATA_AGGREGATE_NOTIFICATION(160),
    SESSION_PULL_REQUEST(161),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(162),
    SESSION_PAUSE(163),
    SESSION_RESUME(164),
    SESSION_DATA_MEMS_NOTIFICATION(165),
    SESSION_GET_ACTIVE_ID(166),
    SESSION_AUTOADAPT_ENABLE(167),
    SESSION_AUTOADAPT_DISABLE(168),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(169),
    SESSION_SET_AUTOADAPT_CONFIG(170),
    SESSION_ACTIVITY_NOTIFICATION(171),
    SESSION_GET_ACTIVITY_STATE(172),
    SESSION_AUTOADAPT_GET_CURRENT_STATE(173),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(174),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(175),
    SESSION_DATA_CAPSENSE_NOTIFICATION(176),
    SESSION_DATA_TEMP_NOTIFICATION(177),
    SESSION_SET_GESTURE_CONFIGURATION(178),
    SESSION_GET_GESTURE_CONFIGURATION(179),
    SESSION_CLEAR_GESTURE_DETECTION_COUNT(180),
    SESSION_GET_GESTURE_DETECTION_COUNT(181),
    SESSION_GESTURE_EVENT_NOTIFICATION(182),
    ASCII_COMMAND(HttpStatusCodesKt.HTTP_OK),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(HttpStatusCodesKt.HTTP_CREATED),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(HttpStatusCodesKt.HTTP_ACCEPTED),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(HttpStatusCodesKt.HTTP_NO_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(HttpStatusCodesKt.HTTP_RESET_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(HttpStatusCodesKt.HTTP_PARTIAL_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(HttpStatusCodesKt.HTTP_MULTI_STATUS),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(HttpStatusCodesKt.HTTP_ALREADY_REPORTED),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(209),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(210),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(211),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(212),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(213),
    SYS_CONFIG_GET_MCU_FW_VERSION(214),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(215),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(216),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(217),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(218),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(219),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(220),
    ANIMATION_GET_COLOR(221),
    ANIMATION_SET_COLOR(222),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(223),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(224),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(225),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(HttpStatusCodesKt.HTTP_IM_USED),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(228),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(229),
    /* JADX INFO: Fake field, exist only in values array */
    EXIT_PLAY_MODE(230),
    SYS_CONFIG_GET_MFG_PRODUCT_ID(231),
    SYS_CONFIG_SET_MFG_PRODUCT_ID(232),
    /* JADX INFO: Fake field, exist only in values array */
    BATTERY_GET_HEALTH_METRICS(233),
    USER_ANIMATION_SET_ANIMATION(234),
    USER_ANIMATION_GET_ANIMATION(235),
    USER_ANIMATION_START_ANIMATION(236),
    USER_ANIMATION_STOP_ANIMATION(237),
    CUSTOM_ANIMATION_GET_ANIMATION(238);


    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final Map<Integer, d> f8448t0 = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8456h;

    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.HashMap, java.util.Map<java.lang.Integer, hc.d>] */
    static {
        for (d dVar : EnumSet.allOf(d.class)) {
            f8448t0.put(Integer.valueOf(dVar.f8456h), dVar);
        }
    }

    d(int i10) {
        this.f8456h = i10;
    }
}
