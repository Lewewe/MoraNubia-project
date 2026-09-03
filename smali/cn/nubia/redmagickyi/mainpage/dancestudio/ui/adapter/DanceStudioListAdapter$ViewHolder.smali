.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DanceStudioListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageCover:Landroid/widget/ImageView;

.field private itemPosition:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

.field private tvAuthor:Landroid/widget/TextView;

.field private tvDesc:Landroid/widget/TextView;

.field private tvPublishTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;Landroid/view/View;)V
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

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    .line 108
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->imageCover:Landroid/widget/ImageView;

    .line 110
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 111
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_author:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvAuthor:Landroid/widget/TextView;

    .line 112
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    .line 113
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_publishtime:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvPublishTime:Landroid/widget/TextView;

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->dance_studio_list_item_bg_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->setBgRadius(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->setItemPosition(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->updateUIState()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;)I
    .locals 0

    .line 102
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    return p0
.end method

.method private setBgRadius(Landroid/view/View;I)V
    .locals 1

    .line 118
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p0, 0x1

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private setItemPosition(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    return-void
.end method

.method private updateUIState()V
    .locals 4

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->imageCover:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getPublishTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvPublishTime:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->tvPublishTime:Landroid/widget/TextView;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->stampToTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 0

    .line 128
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;->itemPosition:I

    return p0
.end method
