.class Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "MainPageCoordinatorLayout.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainPageOnApplyWindowInsetsListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/MainPageCoordinatorLayout$MainPageOnApplyWindowInsetsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    const/4 p0, 0x0

    .line 39
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    return-object p2
.end method
