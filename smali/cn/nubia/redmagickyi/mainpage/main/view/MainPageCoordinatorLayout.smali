.class public Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "MainPageCoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;,
        Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$Toolbar;,
        Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$CollapsingToolbarLayout;,
        Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$AppBarLayout;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 1

    .line 30
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$1;)V

    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
