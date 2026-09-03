.class Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;
.super Ljava/lang/Object;
.source "ARLivePCMainMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 203
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$1;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcn/nubia/redmagickyi/ar/dialog/ARLivePCMainMenuDialog$OnMenuClickListener;->onTouchMenuItem(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
