.class public Lcn/nubia/redmagickyi/user/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcn/nubia/redmagickyi/user/base/BaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mView:Lcn/nubia/redmagickyi/user/base/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcn/nubia/redmagickyi/user/base/BaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 13
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getView()Lcn/nubia/redmagickyi/user/base/BaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/user/base/BaseView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/base/BasePresenter;->mView:Lcn/nubia/redmagickyi/user/base/BaseView;

    return-object v0
.end method
