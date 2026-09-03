.class public final Lcom/zte/activityevent/ActivityEventType;
.super Ljava/lang/Object;
.source "ActivityEventType.java"


# static fields
.field public static final AM_COMPLETE_RESUME:I = 0x80

.field public static final AM_COMPLETE_RESUME_OTHER_DISPLAY:I = 0x200000

.field public static final AM_CREATE_ACTIVITY:I = 0x8

.field public static final AM_CREATE_TASK:I = 0x2000

.field public static final AM_DESTROY_ACTIVITY:I = 0x20

.field public static final AM_FINISH_ACTIVITY:I = 0x4

.field public static final AM_FREE_TO_FULL:I = 0x800

.field public static final AM_MOVE_TASK_TO_FRONT:I = 0x100

.field public static final AM_PAUSE_ACTIVITY:I = 0x40

.field public static final AM_RELAUNCH_RESUME_ACTIVITY:I = 0x2

.field public static final AM_RESUMED_FINISHED_ACTIVITY:I = 0x40000

.field public static final AM_RESUMED_WINTITLE:I = 0x10000

.field public static final AM_RESUME_ACTIVITY:I = 0x1

.field public static final AM_RESUME_ACTIVITY_OTHER_DISPLAY:I = 0x100000

.field public static final AM_SET_RESUMED_ACTIVITY:I = 0x200

.field public static final AM_SPLIT_MODE_CHANGED:I = 0x8000

.field public static final AM_START_ACTIVITY:I = 0x400

.field public static final AM_STOP_ACTIVITY:I = 0x10

.field public static final AM_TASK_REMOVED:I = 0x4000

.field public static final AM_TOP_RESUMED_GAINED:I = 0x1000

.field public static final RECORD_PROCESS_CHANGED:I = 0x20000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TypeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<UNKNOWN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :sswitch_0
    const-string p0, "recordProcessChanged"

    return-object p0

    .line 70
    :sswitch_1
    const-string p0, "resumeWinTitle"

    return-object p0

    .line 79
    :sswitch_2
    const-string p0, "splitModeChanged"

    return-object p0

    .line 76
    :sswitch_3
    const-string p0, "taskRemoved"

    return-object p0

    .line 73
    :sswitch_4
    const-string p0, "createTask"

    return-object p0

    .line 67
    :sswitch_5
    const-string p0, "freeToFull"

    return-object p0

    .line 61
    :sswitch_6
    const-string p0, "start"

    return-object p0

    .line 58
    :sswitch_7
    const-string p0, "setResume"

    return-object p0

    .line 64
    :sswitch_8
    const-string p0, "moveTaskToFront"

    return-object p0

    .line 55
    :sswitch_9
    const-string p0, "completeResume"

    return-object p0

    .line 52
    :sswitch_a
    const-string p0, "pause"

    return-object p0

    .line 49
    :sswitch_b
    const-string p0, "destroy"

    return-object p0

    .line 46
    :sswitch_c
    const-string p0, "stop"

    return-object p0

    .line 43
    :sswitch_d
    const-string p0, "create"

    return-object p0

    .line 40
    :sswitch_e
    const-string p0, "finish"

    return-object p0

    .line 37
    :cond_0
    const-string p0, "relaunchAndResume"

    return-object p0

    .line 34
    :cond_1
    const-string p0, "resume"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x400 -> :sswitch_6
        0x800 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method
