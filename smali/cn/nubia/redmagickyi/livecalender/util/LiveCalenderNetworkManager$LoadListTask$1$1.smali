.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;
.super Ljava/lang/Object;
.source "LiveCalenderNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->onSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

.field final synthetic val$response:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;->val$response:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 134
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoad success, callback "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$100(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;->val$response:Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;

    iget-object v3, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iget-object v3, v3, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-static {v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->access$300(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;->onLoadSuccess(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Z)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$1;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->access$500(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)V

    return-void
.end method
