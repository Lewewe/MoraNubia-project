.class public abstract Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "BaseVideoListLoadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PAGE_NO:I = 0x1

.field public static final MAX_PAGE_SIZE:I = 0x64


# instance fields
.field private pageNo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->pageNo:I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;)I
    .locals 0

    .line 13
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->pageNo:I

    return p0
.end method


# virtual methods
.method public load()Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;
    .locals 2

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController$Task;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController$1;)V

    .line 22
    const-class v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/model/VideoListLoadResponse;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->load()Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;

    move-result-object p0

    return-object p0
.end method

.method public setPageNo(I)Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;
    .locals 0

    .line 28
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/controller/BaseVideoListLoadController;->pageNo:I

    return-object p0
.end method
