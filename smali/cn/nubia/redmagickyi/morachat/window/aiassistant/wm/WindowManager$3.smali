.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->startCaption(Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

.field final synthetic val$autoStopWords:Z

.field final synthetic val$duration:J

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;Ljava/lang/String;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$words:Ljava/lang/String;

    iput-wide p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$duration:J

    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$autoStopWords:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$900(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$words:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$duration:J

    iget-boolean v4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->val$autoStopWords:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$CaptionPanel;->showTextCaption(Ljava/lang/String;JZ)V

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/WindowManager;)V

    return-void
.end method
