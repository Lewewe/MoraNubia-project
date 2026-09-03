.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
.super Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;
.source "OutputEntry.java"


# instance fields
.field private emoCode:I

.field private id:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;)V

    .line 14
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->id:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->emoCode:I

    return-void
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 2

    .line 62
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    return-object v0
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 2

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;-><init>()V

    .line 54
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 55
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->id:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->id:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    .line 57
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->emoCode:I

    iput p0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->emoCode:I

    return-object v0
.end method


# virtual methods
.method public getEmoCode()I
    .locals 0

    .line 44
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->emoCode:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWords()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->isAccompanyEntry()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    return-object p0

    .line 35
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    const-string/jumbo v0, "\u542c"

    const-string/jumbo v1, "\u770b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setEmoCode(I)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 0

    .line 48
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->emoCode:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->words:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputEntry{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', words=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', emoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getEmoCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/OutputEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
