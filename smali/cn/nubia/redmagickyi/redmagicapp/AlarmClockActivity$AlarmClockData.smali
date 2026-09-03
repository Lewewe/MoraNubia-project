.class Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmClockData"
.end annotation


# static fields
.field private static final FIREING_INDEX_1:I = 0x1

.field private static final FIREING_INDEX_2:I = 0x2


# instance fields
.field private alert:Ljava/lang/String;

.field private bSnoozeEnable:Z

.field private bVibrate:Z

.field private days:I

.field private delay:I

.field private hour:I

.field private id:I

.field private label:Ljava/lang/String;

.field private mFiringDuration:I

.field private mFiringIndex:I

.field private mKeyPressValue:I

.field private mSilentMode:Z

.field private mVolumeUp:Z

.field private minute:I

.field private setFor:J

.field private snoozeCount:I

.field private snoozeDuration:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->id:I

    .line 217
    const-string v0, "HOUR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->hour:I

    .line 218
    const-string v0, "MINUTE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->minute:I

    .line 219
    const-string v0, "SNOOZE_ENABLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bSnoozeEnable:Z

    .line 220
    const-string v0, "SNOOZE_DURATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeDuration:I

    .line 221
    const-string v0, "SNOOZE_COUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeCount:I

    .line 222
    const-string v0, "FIRING_INDEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringIndex:I

    .line 223
    const-string v0, "ALARM_ALERT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->alert:Ljava/lang/String;

    .line 224
    const-string v0, "ALARM_LABEL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->label:Ljava/lang/String;

    .line 225
    const-string v0, "VIBRATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bVibrate:Z

    .line 226
    const-string v0, "DAYS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->days:I

    .line 227
    const-string v0, "DELAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->delay:I

    .line 228
    const-string v0, "SET_FOR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->setFor:J

    .line 230
    const-string v0, "VOLUME_UP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mVolumeUp:Z

    .line 231
    const-string v0, "RING_UNDER_SILENT_VIBRATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mSilentMode:Z

    .line 232
    const-string v0, "FIRING_TIMEOUT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringDuration:I

    .line 233
    const-string v0, "KEY_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mKeyPressValue:I

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "intent: id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", days = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->days:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", hour = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->hour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", minute = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->minute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", bSnoozeEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bSnoozeEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", snoozeDuration = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeDuration:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", snoozeCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", alert = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", label = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", bVibrate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bVibrate:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", delay = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->delay:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", setFor = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->setFor:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFiringDuration = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringDuration:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmClockActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringIndex:I

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mVolumeUp:Z

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bSnoozeEnable:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeDuration:I

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeCount:I

    return p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bVibrate:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringDuration:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;)I
    .locals 0

    .line 193
    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mKeyPressValue:I

    return p0
.end method


# virtual methods
.method public createBundle()Landroid/os/Bundle;
    .locals 4

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v1, "ID"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "HOUR"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->hour:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v1, "MINUTE"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->minute:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "SNOOZE_ENABLE"

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->bSnoozeEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v1, "SNOOZE_DURATION"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v1, "SNOOZE_COUNT"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->snoozeCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v1, "FIRING_INDEX"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v1, "ALARM_ALERT"

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "ALARM_LABEL"

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "DAYS"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->days:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v1, "DELAY"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->delay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v1, "SET_FOR"

    iget-wide v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->setFor:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 261
    const-string v1, "VOLUME_UP"

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mVolumeUp:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v1, "RING_UNDER_SILENT_VIBRATE"

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mSilentMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string v1, "FIRING_TIMEOUT"

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mFiringDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string v1, "KEY_SETTINGS"

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AlarmClockActivity$AlarmClockData;->mKeyPressValue:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
