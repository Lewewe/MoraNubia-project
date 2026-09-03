.class public abstract Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.super Ljava/lang/Object;
.source "OKHttpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ERROR_CODE:I = 0x2

.field public static final SUCCESS_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HttpController"


# instance fields
.field private cancelByUser:Z

.field private mCall:Lokhttp3/Call;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->mCall:Lokhttp3/Call;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->cancelByUser:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Lokhttp3/Call;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->mCall:Lokhttp3/Call;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->mCall:Lokhttp3/Call;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->cancelByUser:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->cancelByUser:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->mCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->cancelByUser:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.end method

.method protected abstract onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutput;)V"
        }
    .end annotation
.end method

.method protected onSuccessInMainThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutput;)V"
        }
    .end annotation

    return-void
.end method

.method public varargs type(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 402
    new-instance v0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$1;-><init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
