.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$2;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;->access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/WindowManager$IconPanel;->hideMain()V

    return-void
.end method
