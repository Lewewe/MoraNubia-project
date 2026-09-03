.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->startMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

.field final synthetic val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

.field final synthetic val$isOutputButtonValid:Z

.field final synthetic val$isOutputListValid:Z

.field final synthetic val$isPresetButtonValid:Z

.field final synthetic val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

.field final synthetic val$outputListEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

.field final synthetic val$presetButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;Z[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
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

    .line 225
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isOutputButtonValid:Z

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isOutputListValid:Z

    iput-object p6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputListEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    iput-boolean p7, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isPresetButtonValid:Z

    iput-object p8, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$presetButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isOutputButtonValid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    array-length v0, v0

    if-ne v0, v1, :cond_7

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 237
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    goto/16 :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V

    goto/16 :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 246
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    goto/16 :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V

    goto/16 :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 258
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;Z)V

    goto :goto_0

    .line 265
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    goto :goto_0

    .line 270
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    goto :goto_0

    .line 275
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    :goto_0
    return-void

    .line 279
    :cond_8
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1100(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 280
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1300(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 284
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isOutputListValid:Z

    if-eqz v0, :cond_9

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$outputListEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    return-void

    .line 288
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1200(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    .line 292
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$isPresetButtonValid:Z

    if-eqz v0, :cond_a

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->val$presetButtonEntries:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->showMenu([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    return-void

    .line 296
    :cond_a
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;

    move-result-object p0

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;->access$1400(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/WindowManager$MenuPanel;Z)V

    return-void
.end method
