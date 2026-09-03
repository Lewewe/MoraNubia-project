.class Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;
.super Landroid/database/ContentObserver;
.source "RedmagicSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    .line 470
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 475
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 476
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_a

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    move v1, p2

    .line 479
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 480
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 481
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, p2

    :goto_1
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setPluginEnable(Z)V

    .line 483
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 484
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameChecked(Z)V

    .line 486
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->notifyDataSetChanged()V

    .line 487
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicSupport(Ljava/util/List;)V

    goto/16 :goto_5

    .line 488
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 489
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getLevelLowSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$600(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, p2

    :goto_2
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setLevelLow(Z)V

    .line 490
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$700(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 491
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isLevelLow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 493
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 494
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 495
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    goto :goto_3

    .line 497
    :cond_4
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 498
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 499
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 500
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 503
    :cond_5
    :goto_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicSupport(Ljava/util/List;)V

    goto :goto_5

    .line 504
    :cond_6
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getShowTextSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 505
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getShowTextSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$600(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_7

    move v3, v0

    goto :goto_4

    :cond_7
    move v3, p2

    :goto_4
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setShowText(Z)V

    .line 506
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$700(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    move-result-object v3

    if-ne v2, v3, :cond_8

    .line 507
    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isShowText()Z

    move-result v2

    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$1000(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;Z)V

    .line 509
    :cond_8
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$SupportChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$300(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicSupport(Ljava/util/List;)V

    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
