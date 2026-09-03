.class public Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NoticeBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;,
        Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoticeBannerAdapter"


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;

.field private mContext:Landroid/content/Context;

.field private noticeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;"
        }
    .end annotation
.end field

.field private pageSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->pageSize:I

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public getSize()I
    .locals 0

    .line 42
    iget p0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->pageSize:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    check-cast p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/bean/NoticeBean;

    .line 60
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    iget-object v2, p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v1, p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;->img:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v1, p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;->img:Landroid/widget/ImageView;

    new-instance v2, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$1;-><init>(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;Lcn/nubia/redmagickyi/network/bean/NoticeBean;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p0, p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;->img:Landroid/widget/ImageView;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/NoticeBean;->getThumbPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;
    .locals 0

    .line 52
    new-instance p1, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;

    new-instance p2, Landroid/widget/ImageView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setBannerItemOnclick(Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter$BannerClickInterface;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/NoticeBean;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    .line 36
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->noticeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/adapter/NoticeBannerAdapter;->pageSize:I

    return-void
.end method
