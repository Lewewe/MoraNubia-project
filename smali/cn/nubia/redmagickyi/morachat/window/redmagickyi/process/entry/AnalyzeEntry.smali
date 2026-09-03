.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;
.super Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;
.source "AnalyzeEntry.java"


# instance fields
.field private words:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/BaseEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;)V

    .line 10
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    return-void
.end method

.method public static copy(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;
    .locals 2

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;-><init>()V

    .line 29
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    iput-object v1, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    iput-object p0, v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getWords()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->type:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    return-void
.end method

.method public setWords(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->words:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyzeEntry{words=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->getWords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/AnalyzeEntry;->getType()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

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
