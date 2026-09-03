.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;
.super Ljava/lang/Object;
.source "LiveCalenderNetworkManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/network/manager/LiveCalenderLoadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoad error, reason is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 2

    .line 127
    const-string v0, "onLoad success"

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->access$300(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->preloadBitmap()V

    .line 131
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
