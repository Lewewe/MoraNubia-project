.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;
.super Ljava/lang/Object;
.source "WallPaperHubStaticsAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iput p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    .line 122
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p2, p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    if-eqz p3, :cond_4

    .line 123
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_4

    .line 125
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-lez p1, :cond_0

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_0
    move p2, p1

    goto :goto_2

    :cond_1
    if-lez p1, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_1
    if-lez p2, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 131
    :goto_2
    invoke-static {p3, p1, p2}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p3, :cond_4

    .line 133
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    move-object p3, p1

    .line 137
    :cond_4
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p2, p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Ljava/util/Map;

    move-result-object p2

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$2;->val$position:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
