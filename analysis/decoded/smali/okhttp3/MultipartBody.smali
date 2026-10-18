.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Part;,
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Companion;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field public static final Companion:Lokhttp3/MultipartBody$Companion;

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundaryByteString:Lde/g;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lokhttp3/MediaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokhttp3/MultipartBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lokhttp3/MultipartBody;->Companion:Lokhttp3/MultipartBody$Companion;

    .line 1
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v1, "multipart/alternative"

    .line 2
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    const-string v1, "multipart/digest"

    .line 3
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    const-string v1, "multipart/parallel"

    .line 4
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    const-string v1, "multipart/form-data"

    .line 5
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 6
    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 7
    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 8
    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void
.end method

.method public constructor <init>(Lde/g;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/g;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lde/g;

    .line 3
    iput-object p2, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    .line 4
    iput-object p3, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 5
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-void
.end method

.method private final writeOrCountBytes(Lde/e;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lde/c;

    invoke-direct {p1}, Lde/c;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_5

    .line 3
    iget-object v6, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/MultipartBody$Part;

    .line 4
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Part;->headers()Lokhttp3/Headers;

    move-result-object v7

    .line 5
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Part;->body()Lokhttp3/RequestBody;

    move-result-object v6

    .line 6
    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    sget-object v8, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v8}, Lde/e;->D([B)Lde/e;

    .line 7
    iget-object v8, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lde/g;

    invoke-interface {p1, v8}, Lde/e;->N(Lde/g;)Lde/e;

    .line 8
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v8}, Lde/e;->D([B)Lde/e;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    .line 10
    invoke-virtual {v7, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lde/e;->U(Ljava/lang/String;)Lde/e;

    move-result-object v10

    .line 11
    sget-object v11, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v10, v11}, Lde/e;->D([B)Lde/e;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lde/e;->U(Ljava/lang/String;)Lde/e;

    move-result-object v10

    .line 13
    sget-object v11, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v10, v11}, Lde/e;->D([B)Lde/e;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lde/e;->U(Ljava/lang/String;)Lde/e;

    move-result-object v8

    .line 16
    invoke-virtual {v7}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lde/e;->U(Ljava/lang/String;)Lde/e;

    move-result-object v7

    .line 17
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v7, v8}, Lde/e;->D([B)Lde/e;

    .line 18
    :cond_2
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_3

    if-eqz p2, :cond_3

    .line 19
    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lde/c;->x()V

    return-wide v9

    .line 20
    :cond_3
    sget-object v9, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v9}, Lde/e;->D([B)Lde/e;

    if-eqz p2, :cond_4

    add-long/2addr v3, v7

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {v6, p1}, Lokhttp3/RequestBody;->writeTo(Lde/e;)V

    .line 22
    :goto_3
    invoke-interface {p1, v9}, Lde/e;->D([B)Lde/e;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 23
    :cond_5
    invoke-static {p1}, Lp4/h;->g(Ljava/lang/Object;)V

    sget-object v1, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lde/e;->D([B)Lde/e;

    .line 24
    iget-object v2, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lde/g;

    invoke-interface {p1, v2}, Lde/e;->N(Lde/g;)Lde/e;

    .line 25
    invoke-interface {p1, v1}, Lde/e;->D([B)Lde/e;

    .line 26
    sget-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v1}, Lde/e;->D([B)Lde/e;

    if-eqz p2, :cond_6

    .line 27
    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 28
    iget-wide p1, v0, Lde/c;->i:J

    add-long/2addr v3, p1

    .line 29
    invoke-virtual {v0}, Lde/c;->x()V

    :cond_6
    return-wide v3
.end method


# virtual methods
.method public final -deprecated_boundary()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_size()I
    .locals 1

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->size()I

    move-result v0

    return v0
.end method

.method public final -deprecated_type()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final boundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lde/g;

    invoke-virtual {v0}, Lde/g;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lde/e;Z)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    :cond_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final part(I)Lokhttp3/MultipartBody$Part;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/MultipartBody$Part;

    return-object p1
.end method

.method public final parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final type()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lde/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lde/e;Z)J

    return-void
.end method
