.class Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask$1;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/playmate/network/manager/VideoListLoadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 1

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onLoad error, reason is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$200()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;

    .line 83
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;->onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V
    .locals 3

    .line 72
    const-string p0, "onLoad success"

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$200()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoad success, callback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager;->access$100(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/playmate/util/VideoListNetworkManager$Callback;->onLoadSuccess(Lcn/nubia/redmagickyi/playmate/network/model/VideoListLoadResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method
