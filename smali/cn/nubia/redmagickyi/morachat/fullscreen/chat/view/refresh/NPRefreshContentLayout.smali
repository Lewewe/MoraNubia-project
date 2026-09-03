.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "NPRefreshContentLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NPRefreshContentLayout"


# instance fields
.field private contentView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initEventHelper()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->headerView:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->contentView:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->headerView:Landroid/view/View;

    return-object p0
.end method

.method public hideHeaderOrFooter()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->hideHeaderOrFooter()V

    return-void
.end method

.method public onDataLoadingCompleted(Ljava/lang/String;I)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->stopLoading(Ljava/lang/String;I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCanDragToSynchronization(Z)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->setCanDragToSynchronization(Z)V

    return-void
.end method

.method public setCanScrollVerticallyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->setCanScrollVerticallyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->contentView:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->initEventHelper()V

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->headerView:Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->initEventHelper()V

    return-void
.end method

.method public setLoadDataListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->setLoadDataListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;)V

    return-void
.end method

.method public startLoadingAnimation()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->startLoadingAnimation()V

    return-void
.end method

.method public updateSyncTip(Ljava/lang/String;I)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshContentLayout;->mEventHelper:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->updateSyncTip(Ljava/lang/String;I)V

    return-void
.end method
