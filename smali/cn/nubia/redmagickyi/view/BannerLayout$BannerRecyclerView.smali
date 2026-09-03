.class public Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BannerRecyclerView"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/BannerLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    .line 93
    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    return-void
.end method
