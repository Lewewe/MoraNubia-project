.class public Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"


# static fields
.field public static final AES_256_SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "AES256"


# instance fields
.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/CaseInsensitiveHashMap;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/common/utils/CaseInsensitiveHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 25
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/CaseInsensitiveHashMap;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/common/utils/CaseInsensitiveHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "ETag"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Expires"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-oss-object-type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRawExpiresValue()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Expires"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRawMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSHA1()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-oss-hash-sha1"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-oss-server-side-encryption"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object p0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Cache-Control"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentLength(J)V
    .locals 2

    const-wide v0, 0x140000000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The content length could not be more than 5GB."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-MD5"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Expires"

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "Last-Modified"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSHA1(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-oss-hash-sha1"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v0, "x-oss-server-side-encryption"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    const-string v0, ""

    .line 294
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Last-Modified:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExpires:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nrawExpires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawExpiresValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nContent-MD5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nx-oss-object-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getObjectType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nx-oss-server-side-encryption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nContent-Disposition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nContent-Encoding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCache-Control:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nETag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
