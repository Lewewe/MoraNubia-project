.class Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController$Task;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.source "BaseNetTimeLoadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/network/model/NetTimeResponse;",
        ">.",
        "LoadTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController$Task;->this$0:Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController$Task;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController;)V

    return-void
.end method


# virtual methods
.method protected getUrl()Lcn/nubia/redmagickyi/network/okhttp/Url;
    .locals 1

    .line 33
    new-instance p0, Lcn/nubia/redmagickyi/network/okhttp/Url;

    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getUrlDomain()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/okhttp/Url;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/Url;->get()Lcn/nubia/redmagickyi/network/okhttp/Url;

    move-result-object p0

    return-object p0
.end method

.method protected onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;->getServerTimeAtMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/network/model/NetTimeResponse;-><init>(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/network/controller/BaseNetTimeLoadController$Task;->sendMessage(Ljava/lang/Object;I)V

    return p1

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->onInterceptor(Lcn/nubia/redmagickyi/network/okhttp/HttpResponse;)Z

    move-result p0

    return p0
.end method
