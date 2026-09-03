.class Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;
.super Landroid/database/ContentObserver;
.source "RedmagicBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    .line 509
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 514
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_7

    .line 516
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    move v1, p2

    .line 518
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 519
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 520
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getPluginEnableSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$600(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p2

    :goto_1
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setPluginEnable(Z)V

    .line 522
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$700(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->notifyDataSetChanged()V

    return-void

    .line 525
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->setChecked(Z)V

    .line 527
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$700(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->notifyDataSetChanged()V

    .line 528
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v3}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v4}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicBroadcast(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, p2

    .line 532
    :goto_2
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 533
    iget-object v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, p2

    .line 534
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 535
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    .line 536
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 537
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$900(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, p2

    :goto_4
    invoke-virtual {v4, v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setChecked(Z)V

    .line 538
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$400(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->notifyDataSetChanged()V

    .line 539
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {p2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$500(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$BroadcastChangedObserver;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$800(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcn/nubia/redmagickyi/commonui/nubia/owlsysaction/OwlSysHelper;->insertOwlRedmagicBroadcast(Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
