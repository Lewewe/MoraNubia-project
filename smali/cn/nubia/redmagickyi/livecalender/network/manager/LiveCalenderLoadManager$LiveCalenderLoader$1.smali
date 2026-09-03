.class Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;
.source "LiveCalenderLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->loadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;-><init>()V

    return-void
.end method

.method private onLoadFailed()V
    .locals 1

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadOnlineDate onError, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1200(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->onLoadFailed()V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/NetTimeResponse;)V
    .locals 5

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$400(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadOnlineDate onSuccess, isCanceled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v2, v2, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$500(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$600(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$700(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;->getTime()J

    move-result-wide v1

    .line 138
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->access$800(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;Ljava/util/Date;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$900(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1000(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->onLoadFailed()V

    .line 142
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->this$0:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;->access$1100(Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager;)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->this$1:Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader;->cancel()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 129
    check-cast p1, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$LiveCalenderLoader$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/NetTimeResponse;)V

    return-void
.end method
