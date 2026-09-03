.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;
.super Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
.source "GameAssistAddon.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon<",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;",
        ">;"
    }
.end annotation


# instance fields
.field private from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

.field private isRawWordsEmpty:Z

.field private outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

.field private outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

.field private presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;
    .locals 2

    .line 61
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;-><init>()V

    .line 62
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    .line 63
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    iput-boolean v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    .line 64
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    .line 65
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    .line 66
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    move-result-object p0

    return-object p0
.end method

.method public getFrom()Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    return-object p0
.end method

.method public getOutputButtonData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    return-object p0
.end method

.method public getOutputListData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    return-object p0
.end method

.method public getPresetButtonData()[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    return-object p0
.end method

.method public isRawWordsEmpty()Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    return p0
.end method

.method public restore()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    .line 73
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    .line 74
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    return-void
.end method

.method public setFrom(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    return-void
.end method

.method public setOutputButtonData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    return-void
.end method

.method public setOutputListData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    return-void
.end method

.method public setPresetButtonData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    return-void
.end method

.method public setRawWordsEmpty(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameAssistAddon{isRawWordsEmpty="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->isRawWordsEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->from:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presetButtonData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->presetButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputButtonData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputButtonData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputListData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->outputListData:[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    .line 84
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
