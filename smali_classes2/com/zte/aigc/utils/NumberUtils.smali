.class public Lcom/zte/aigc/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static o2l(Ljava/lang/Object;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/zte/aigc/utils/NumberUtils;->o2l(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o2l(Ljava/lang/Object;J)J
    .locals 0

    if-nez p0, :cond_0

    return-wide p1

    .line 73
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/zte/aigc/utils/NumberUtils;->s2l(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static s2i(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/zte/aigc/utils/NumberUtils;->s2i(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static s2i(Ljava/lang/String;I)I
    .locals 1

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\d+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static s2l(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Lcom/zte/aigc/utils/NumberUtils;->s2l(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s2l(Ljava/lang/String;J)J
    .locals 1

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^\\d+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method
