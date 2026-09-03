.class public Lcn/nubia/accountsdk/http/model/ImageCodeResponse;
.super Lcn/nubia/accountsdk/http/model/BaseResponse;
.source "ImageCodeResponse.java"


# instance fields
.field private mImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcn/nubia/accountsdk/http/model/BaseResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static parse([B)Lcn/nubia/accountsdk/http/model/ImageCodeResponse;
    .locals 2

    if-eqz p0, :cond_0

    .line 34
    array-length v0, p0

    if-lez v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;-><init>(I)V

    .line 36
    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;->setImage([B)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;

    const/4 p0, -0x1

    invoke-direct {v0, p0}, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method private setImage([B)V
    .locals 2

    .line 26
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;->mImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/accountsdk/http/model/ImageCodeResponse;->mImage:Landroid/graphics/Bitmap;

    return-object p0
.end method
