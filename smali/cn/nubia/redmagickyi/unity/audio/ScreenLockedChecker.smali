.class Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;
.super Ljava/lang/Object;
.source "ScreenLockedChecker.java"


# static fields
.field private static final MSG_RECHECK_ENABLE_PLAY_BGM:I = 0x1

.field private static final MSG_RECHECK_ENABLE_PLAY_VOICE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenLockedChecker"


# instance fields
.field private enablePlayWhenScreenLocked:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->enablePlayWhenScreenLocked:Z

    .line 16
    new-instance v0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker$1;-><init>(Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleAudioAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public isEnablePlayWhenScreenLocked(Ljava/lang/String;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z
    .locals 5

    .line 38
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    if-nez p1, :cond_1

    move v1, v3

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v1, v2

    .line 47
    :cond_2
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 52
    :cond_3
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 57
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->enablePlayWhenScreenLocked:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcn/nubia/redmagickyi/util/KeyguardUtil;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v3

    .line 61
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    const-string v0, "ScreenLockedChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checking enable play when screen is locked, enablePlay is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_8

    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 66
    iput v2, p2, Landroid/os/Message;->what:I

    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_8
    :goto_2
    move v3, v1

    :goto_3
    return v3

    :catchall_1
    move-exception p1

    .line 61
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public setEnablePlayWhenScreenLocked(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/audio/ScreenLockedChecker;->enablePlayWhenScreenLocked:Z

    return-void
.end method
