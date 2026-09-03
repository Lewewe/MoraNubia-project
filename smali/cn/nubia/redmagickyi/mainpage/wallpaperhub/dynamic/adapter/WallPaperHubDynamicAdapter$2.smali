.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;
.super Ljava/lang/Object;
.source "WallPaperHubDynamicAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter;)Ljava/util/Map;

    move-result-object p1

    iget p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->val$position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/adapter/WallPaperHubDynamicAdapter$2;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;->bg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
