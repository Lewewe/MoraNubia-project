.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
.super Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/BaseEntry;
.source "OutputEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry$OutputType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;",
        ">",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/BaseEntry;"
    }
.end annotation


# static fields
.field public static final OUTPUT_TYPE_TEXT_AND_VOICE:I = 0x0

.field public static final OUTPUT_TYPE_TEXT_ONLY:I = 0x1

.field public static final OUTPUT_TYPE_VOICE_ONLY:I = 0x2


# instance fields
.field private addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private emoCode:I

.field private id:Ljava/lang/String;

.field private outputType:I

.field private words:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/BaseEntry;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/BaseEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    .line 44
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    .line 45
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    .line 46
    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    .line 47
    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    if-ne p1, p2, :cond_0

    .line 48
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    :cond_0
    return-void
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 2

    .line 119
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/analyze/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object v0
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 2

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>()V

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    .line 110
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    .line 112
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->emoCode:I

    iput v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->emoCode:I

    .line 113
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    iput v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;->clone()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    return-object v0
.end method

.method public static createByGameAgentResponse(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->isValid(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;->TYPE_GAMEAGENT:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getOutput()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->EMOTION_CODE_INNER_HELLO:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Private;->getEmoCode()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getOutputType()I

    move-result v1

    iput v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    .line 130
    iget-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    check-cast v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->setFrom(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$From;)V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 134
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;

    .line 135
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    new-instance v4, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getActionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getThumbnail()Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getButtonActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ButtonAction;->getContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    .line 143
    iget-object v3, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    check-cast v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-virtual {v3, v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->setRawWordsEmpty(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v2, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    check-cast v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->setOutputButtonData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getListActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;

    .line 152
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 155
    :cond_4
    new-instance v3, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;->getActionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/response/ChatResponse$ListAction;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 157
    :cond_5
    iget-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    check-cast p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->setOutputListData([Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    :cond_6
    return-object v0

    .line 161
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Game assist response is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAddon()Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    return-object p0
.end method

.method public getEmoCode()I
    .locals 0

    .line 80
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->emoCode:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputType()I
    .locals 0

    .line 89
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    return p0
.end method

.method public getWords()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->isAccompanyEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 68
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    const-string/jumbo v0, "\u542c"

    const-string/jumbo v1, "\u770b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAddon(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;->restore()V

    :cond_0
    return-object p0
.end method

.method public setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 0

    .line 84
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->emoCode:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputType(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    return-void
.end method

.method public setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;
    .locals 2

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/GameAssistAddon;->setRawWordsEmpty(Z)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputEntry{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', entryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/EntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', words=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', emoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->emoCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->outputType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->addon:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/addon/Addon;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
