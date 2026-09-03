.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;
.super Landroid/os/Handler;
.source "RedmagicCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallHandler"
.end annotation


# instance fields
.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V
    .locals 1

    .line 461
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 467
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    if-eqz v0, :cond_10

    .line 469
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v1, v4, :cond_e

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v1, v7, :cond_b

    if-eq v1, v5, :cond_9

    if-eq v1, v6, :cond_0

    goto/16 :goto_8

    .line 505
    :cond_0
    const-string v1, "stopRingtone begin"

    const-string v5, "CallFragment"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    :try_start_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 509
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 510
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 512
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :goto_0
    invoke-static {v0, v8}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$702(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_2

    :goto_1
    invoke-static {v0, v8}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$702(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 515
    throw p0

    .line 517
    :cond_1
    :goto_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_2

    move p1, v3

    goto :goto_3

    :cond_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_3

    .line 518
    const-string v1, ", replay ringtone"

    goto :goto_4

    :cond_3
    const-string v1, ""

    :goto_4
    const-string v6, "stopRingtone end"

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    .line 519
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$800(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_10

    .line 520
    const-string p1, "playRingtone begin"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/RingtoneGetter;->getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    move v1, v3

    goto :goto_5

    :cond_4
    move v1, v2

    .line 524
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playRingtone uri = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "/system/media/audio/ringtones/"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/RingtoneGetter;->getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v3

    .line 529
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playRingtone path = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_6

    :cond_6
    move-object v2, v8

    :goto_6
    const-wide/16 v6, 0xc8

    if-eqz v1, :cond_8

    .line 533
    :try_start_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$702(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 534
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v9, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;

    invoke-direct {v9, p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V

    invoke-virtual {v1, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 542
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 543
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    if-eqz p1, :cond_7

    .line 545
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_7

    .line 547
    :cond_7
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 549
    :goto_7
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 550
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 551
    const-string p0, "playRingtone success"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "playRingtone error = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v0, v8}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$702(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 556
    invoke-static {v0, v6, v7}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;J)V

    goto/16 :goto_8

    .line 559
    :cond_8
    invoke-static {v0, v6, v7}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;J)V

    goto/16 :goto_8

    .line 501
    :cond_9
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v3, :cond_a

    move v2, v3

    .line 502
    :cond_a
    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$600(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Z)V

    goto/16 :goto_8

    .line 487
    :cond_b
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$500(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/VideoView;->getVideoDuration()I

    move-result p1

    .line 488
    invoke-virtual {p0, v8}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-lez p1, :cond_c

    .line 489
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$500(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result v1

    if-ne v1, p1, :cond_c

    .line 490
    const-string p1, "finish"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$202(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_c
    if-lez p1, :cond_d

    .line 492
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$500(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/util/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/util/VideoView;->getCurrentPosition()I

    move-result v1

    mul-int/2addr p1, v5

    div-int/2addr p1, v6

    if-lt v1, p1, :cond_d

    .line 493
    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 495
    :cond_d
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v0, 0x3e8

    .line 497
    invoke-virtual {p0, v7, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 476
    :cond_e
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->show_tips_call_drop:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 478
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    invoke-virtual {p0, v5}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 480
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 481
    iput v5, p1, Landroid/os/Message;->what:I

    .line 482
    iput v2, p1, Landroid/os/Message;->arg1:I

    const-wide/16 v0, 0x7d0

    .line 483
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 471
    :cond_f
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->show_tips_signal_bad:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 473
    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$400(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    :goto_8
    return-void
.end method
