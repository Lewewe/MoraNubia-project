.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChatImagesPreviewActivity.java"


# static fields
.field private static final EXTRA_PARAMS_DATA:Ljava/lang/String; = "draggableImages"

.field private static final EXTRA_PARAMS_INDEX:Ljava/lang/String; = "index"


# instance fields
.field private galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

.field private isPortrait:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getGalleryViewer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    .line 98
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->setActionListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer$ActionListener;)V

    .line 107
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    return-object p0
.end method

.method public static launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;)V
    .locals 3

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v1, "draggableImages"

    iget-object v2, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;->draggableImageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 31
    const-string v1, "index"

    iget p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageViewerHelper$ImageBundle;->picIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 34
    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method private transparentStatusBar(Landroid/app/Activity;)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1006

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateUIByOrientation(Landroid/content/res/Configuration;)V
    .locals 1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 65
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->isPortrait:Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->isPortrait:Ljava/lang/Boolean;

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v0, :cond_3

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->isPortrait:Ljava/lang/Boolean;

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getGalleryViewer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->refreshImageState()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->galleryViewer:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->closeWithAnimator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->transparentStatusBar(Landroid/app/Activity;)V

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getGalleryViewer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "draggableImages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->getGalleryViewer()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/DraggableImageGalleryViewer;->showImagesWithAnimator(Ljava/util/List;I)V

    :cond_0
    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatImagesPreviewActivity;->updateUIByOrientation(Landroid/content/res/Configuration;)V

    return-void
.end method
