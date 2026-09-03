.class Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;
.super Ljava/lang/Object;
.source "LiveCalenderNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

.field final synthetic val$error:Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
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

    .line 146
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->val$error:Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
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

    .line 150
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->val$error:Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$Callback;->onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->access$300(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->val$error:Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    if-nez v0, :cond_1

    .line 154
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$200(I)V

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_2

    .line 156
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->acct_expired:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$200(I)V

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->val$error:Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 158
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->access$200(I)V

    .line 161
    :cond_3
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1$2;->this$1:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;->access$500(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager$LoadListTask;)V

    return-void
.end method
