.class Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->registerDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 491
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$1000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;->this$0:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->access$1000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;->onDisplayOrientationChanged()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
