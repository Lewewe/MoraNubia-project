.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;
.super Ljava/lang/Object;
.source "DanceStudioMainAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->updateUIState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;

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

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;->access$600(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->access$300(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder$1;->this$1:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioMainAdapter$DanceStudioMainViewHolder;->bg:Landroid/widget/ImageView;

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
