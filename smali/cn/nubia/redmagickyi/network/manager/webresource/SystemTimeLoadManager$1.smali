.class Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;
.source "SystemTimeLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseSystemTimeLoadController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;)V
    .locals 2

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;->this$0:Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;->access$000(Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->getCode()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->getData()Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onSuccess: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->getData()Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;->getServer_time()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemTimeLoadManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;->getData()Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse$Data;->getServer_time()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->updateServerTime(Landroid/content/Context;J)V

    :cond_0
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

    .line 24
    check-cast p1, Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/manager/webresource/SystemTimeLoadManager$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/SystemTimeResponse;)V

    return-void
.end method
