.class public abstract Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseWallPaperHubStaticsPreviewAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;,
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$CheckPlayCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;",
        ">;",
        "Lcn/nubia/redmagickyi/view/pageslider/OnPageChangeListener;"
    }
.end annotation


# instance fields
.field private currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCachedBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private preloadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->memoryCachedBitmaps:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mContext:Landroid/content/Context;

    .line 46
    new-instance p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->preloadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->preloadManager:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$PreloadManager;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->memoryCachedBitmaps:Ljava/util/Map;

    return-object p0
.end method

.method public static isFileUri(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 262
    :try_start_0
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public abstract checkFirstTimePlay(Ljava/lang/String;JLjava/lang/String;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$CheckPlayCallback;)V
.end method

.method public getCurrentHolder()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 65
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->getItemPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getPlayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;I)V
    .locals 0

    .line 77
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;I)V

    .line 78
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->onViewHolderAttachedFromWindow()V

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

    .line 37
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;
    .locals 2

    .line 71
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->wallpapaerhub_preview_statics_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onPageSelected(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->onPageSelected(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;)V

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    .line 99
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/MediaController;->onViewHolderDetachedFromWindow()V

    .line 101
    :cond_1
    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->currentHolder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    .line 102
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;->loadImageResource()V

    return-void
.end method

.method public abstract onPageSelected(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;)V
.end method

.method public abstract onPlayError()V
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    check-cast p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->onViewAttachedToWindow(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter$ViewHolder;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/BaseWallPaperHubStaticsPreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method
