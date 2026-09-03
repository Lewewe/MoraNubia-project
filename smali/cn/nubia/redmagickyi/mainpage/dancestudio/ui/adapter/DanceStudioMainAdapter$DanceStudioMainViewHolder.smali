.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DanceStudioMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DanceStudioMainViewHolder"
.end annotation


# instance fields
.field private final TITLE_BG_COLORS:[I

.field public bg:Landroid/widget/ImageView;

.field public item:Landroid/widget/FrameLayout;

.field private itemPosition:I

.field public layoutTitle:Landroid/widget/ImageView;

.field public newAdd:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;Landroid/view/View;)V
    .locals 7
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

    .line 122
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    .line 123
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    sget v0, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->getColor(I)I

    move-result v1

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->black_5C000000:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->getColor(I)I

    move-result v2

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->black_3D000000:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->getColor(I)I

    move-result v3

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->black_1F000000:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->getColor(I)I

    move-result v4

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->black_0F000000:I

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->TITLE_BG_COLORS:[I

    .line 124
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->newadd_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->newAdd:Landroid/widget/ImageView;

    .line 125
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->item_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->item:Landroid/widget/FrameLayout;

    .line 126
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->bg:Landroid/widget/ImageView;

    .line 127
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 128
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_title_bg:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->layoutTitle:Landroid/widget/ImageView;

    .line 129
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->item:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 132
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$400(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->item:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->setItemPosition(I)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->updateUIState()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    return p0
.end method

.method private getColor(I)I
    .locals 0

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private setItemPosition(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    return-void
.end method

.method private updateUIState()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$500(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;

    .line 146
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->newAdd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->isNewAdd()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/network/bean/VideoListOnlineBean$Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->bg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Ljava/util/Map;

    move-result-object v1

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 154
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/imageloader/NeoImageLoader;->getInstance()Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->bg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$700(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->bg:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$800(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Landroid/content/Context;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->wallpaperhub_item_image_placeholder:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemPosition()I
    .locals 0

    .line 141
    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->itemPosition:I

    return p0
.end method
