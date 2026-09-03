.class Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;
.super Ljava/lang/Object;
.source "WallPaperPetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->parseMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 390
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$600(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$4;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$700(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Landroid/view/View;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->fadeOut(Landroid/view/View;J)V

    return-void
.end method
