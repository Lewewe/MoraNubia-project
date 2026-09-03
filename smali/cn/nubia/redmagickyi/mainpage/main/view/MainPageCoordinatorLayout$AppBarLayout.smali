.class public Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$AppBarLayout;
.super Lcom/google/android/material/appbar/AppBarLayout;
.source "MainPageCoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 1

    .line 59
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$1;)V

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
