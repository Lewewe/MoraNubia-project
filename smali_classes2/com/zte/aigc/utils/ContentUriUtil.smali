.class public Lcom/zte/aigc/utils/ContentUriUtil;
.super Ljava/lang/Object;
.source "ContentUriUtil.java"


# static fields
.field private static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBooleanParam(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "caller_is_syncadapter"

    const-string v0, "true"

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 22
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getLongParam(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/zte/aigc/utils/ContentUriUtil;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-wide p2
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 80
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    const/16 v5, 0x26

    if-lez v3, :cond_3

    add-int/lit8 v6, v3, -0x1

    .line 99
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_3

    if-eq v6, v5, :cond_3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    add-int/2addr v3, v2

    if-ne v1, v3, :cond_4

    return-object v0

    .line 114
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 120
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 127
    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSyncAdapterParameter(Landroid/net/Uri;)Z
    .locals 2

    .line 46
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/zte/aigc/utils/ContentUriUtil;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 7

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    move v5, v6

    .line 71
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, v6

    if-eq p2, p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x26

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p2

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 64
    const-string p1, "=0"

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/zte/aigc/utils/ContentUriUtil;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "=false"

    const/4 v1, 0x1

    .line 65
    invoke-static {p0, v0, p1, v1}, Lcom/zte/aigc/utils/ContentUriUtil;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    move p2, v1

    :cond_2
    return p2
.end method
