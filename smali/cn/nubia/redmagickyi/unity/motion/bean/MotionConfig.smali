.class public Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;
.super Ljava/lang/Object;
.source "MotionConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_WORDS_PATTERN:Lcom/zte/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private timeLength:D

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "^([^\\s]{1}\u5929)|(\u5f85\u673a\\d*)$"

    invoke-static {v0}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->EMPTY_WORDS_PATTERN:Lcom/zte/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;D)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    .line 21
    iput-object p3, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    .line 23
    iput p2, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    return-void
.end method


# virtual methods
.method public equals(Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;)Z
    .locals 2

    .line 75
    iget v0, p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    iget v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    iget v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    iget-wide p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    cmpl-double p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDuration()I
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getTimeLength()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeLength()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 35
    iget p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    return p0
.end method

.method public isEmptyWords()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->EMPTY_WORDS_PATTERN:Lcom/zte/regex/Pattern;

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/zte/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    return-void
.end method

.method public setTimeLength(D)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotionConfig{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timeLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->timeLength:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
