.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->updateUIState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$1100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;->access$1000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/MediaController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
