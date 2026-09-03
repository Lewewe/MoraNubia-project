.class Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;
.super Landroid/os/Handler;
.source "PowerChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerChargeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 563
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 566
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$200(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1000(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 569
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "PowerChargeActivity"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto/16 :goto_4

    .line 626
    :cond_1
    const-string p1, "update local time"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 629
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "h:mm"

    invoke-direct {p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 634
    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 635
    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 636
    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getTvTime()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/32 v3, 0xea60

    .line 637
    rem-long/2addr v0, v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 599
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 600
    iput v3, v0, Landroid/os/Message;->what:I

    .line 601
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->isFastCharging()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_5

    .line 603
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->getFastChargeBatteryLevel()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_4

    .line 605
    const-string v1, "100"

    goto :goto_1

    .line 607
    :cond_4
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.2f"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 610
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->getChargeBatteryLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 614
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0x10

    add-long/2addr v2, v6

    sub-long/2addr v2, v4

    goto :goto_2

    .line 617
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$1100(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/powercharge/observer/battery/BatteryCapacityObserverManager;->getChargeBatteryLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 619
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    .line 622
    :goto_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getTvBatteryCapacity()Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v4, 0x3

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6

    const-wide/16 v2, 0x0

    .line 623
    :cond_6
    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 571
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "update charge type, now chargeType is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    goto/16 :goto_3

    .line 587
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNormal()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNeo()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsMax()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 582
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNormal()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNeo()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsMax()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 577
    :cond_a
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNormal()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsNeo()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getStyleView()Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/view/BaseChargeStyleView;->getImgChargeTipsMax()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity$PowerChargeHandler;->this$0:Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;->access$700(Lcn/nubia/redmagickyi/redmagicapp/PowerChargeActivity;)V

    :cond_b
    :goto_4
    return-void
.end method
