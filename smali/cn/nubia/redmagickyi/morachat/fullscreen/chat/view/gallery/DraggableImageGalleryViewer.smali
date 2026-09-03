.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;
.super Landroid/widget/FrameLayout;
.source "DraggableImageGalleryViewer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;
    }
.end annotation


# static fields
.field private static final TAG_PREGIX:Ljava/lang/String; = "DraggableImageGalleryViewer_"


# instance fields
.field private actionListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;

.field private mImageGalleryViewOriginDownloadImg:Landroid/widget/ImageView;

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

.field private showWithAnimator:Z

.field private vpContentViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->showWithAnimator:Z

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->vpContentViewList:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->getImageViewFromCacheContainer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->showWithAnimator:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->showWithAnimator:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setCurrentImgIndex(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->actionListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;

    return-object p0
.end method

.method private getImageViewFromCacheContainer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;
    .locals 3

    .line 134
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->vpContentViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->vpContentViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    .line 136
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 144
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$4;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->setActionListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView$ActionListener;)V

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->vpContentViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method private init()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_fs_chat_preview:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->vp_content:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    .line 42
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->initAdapter()V

    .line 45
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_download:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageGalleryViewOriginDownloadImg:Landroid/widget/ImageView;

    .line 46
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initAdapter()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setCurrentImgIndex(I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->setCurrentItem(IZ)V

    .line 127
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_indicator:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public closeWithAnimator()Z
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DraggableImageGalleryViewer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;

    .line 160
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;

    .line 161
    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;->draggableInfo:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableParamsInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/DraggableImageView;->clickToExit()Z

    move-result p0

    return p0

    .line 165
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->actionListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;->closeViewer()V

    const/4 p0, 0x1

    return p0
.end method

.method public onExit()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->actionListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;->closeViewer()V

    return-void
.end method

.method public refreshImageState()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getCurrentItem()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 62
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setCurrentImgIndex(I)V

    return-void
.end method

.method public setActionListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->actionListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;

    return-void
.end method

.method public showImagesWithAnimator(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/entities/DraggableImageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->mImageViewerViewPage:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/core/HackyViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_0
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setCurrentImgIndex(I)V

    return-void
.end method
