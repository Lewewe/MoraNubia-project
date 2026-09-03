.class Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NoticeBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 87
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;->img:Landroid/widget/ImageView;

    return-void
.end method
