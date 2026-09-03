.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
.super Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;
.source "OutputEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry$OutputType;
    }
.end annotation


# static fields
.field public static final OUTPUT_TYPE_TEXT_AND_VOICE:I = 0x0

.field public static final OUTPUT_TYPE_TEXT_ONLY:I = 0x1

.field public static final OUTPUT_TYPE_VOICE_ONLY:I = 0x2


# instance fields
.field private emoCode:I

.field private id:Ljava/lang/String;

.field private outputType:I

.field private words:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    .line 33
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    .line 34
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    .line 35
    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    return-void
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 2

    .line 91
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    .line 93
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/analyze/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object v0
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 2

    .line 81
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;-><init>()V

    .line 82
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    .line 83
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    .line 85
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->emoCode:I

    iput v1, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->emoCode:I

    .line 86
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    iput p0, v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    return-object v0
.end method


# virtual methods
.method public getEmoCode()I
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->emoCode:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputType()I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    return p0
.end method

.method public getWords()Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->isAccompanyEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 54
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    const-string/jumbo v0, "\u542c"

    const-string/jumbo v1, "\u770b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 0

    .line 67
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->emoCode:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputType(I)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 0

    .line 76
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    return-object p0
.end method

.method public setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputEntry{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', entryType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', words=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', emoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->emoCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/output/OutputEntry;->outputType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
