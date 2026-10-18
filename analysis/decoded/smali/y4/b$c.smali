.class public final Ly4/b$c;
.super Ly4/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:Z

.field public f:Ljava/util/UUID;

.field public g:[B


# direct methods
.method public constructor <init>(Ly4/b$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Protection"

    invoke-direct {p0, p1, p2, v0}, Ly4/b$a;-><init>(Ly4/b$a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n([B)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-byte v1, p0, v0

    const/4 v2, 0x3

    .line 2
    aget-byte v3, p0, v2

    aput-byte v3, p0, v0

    .line 3
    aput-byte v1, p0, v2

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ly4/a$a;

    iget-object v2, v0, Ly4/b$c;->f:Ljava/util/UUID;

    iget-object v3, v0, Ly4/b$c;->g:[B

    const/4 v4, 0x0

    .line 2
    invoke-static {v2, v4, v3}, La4/i;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v3

    .line 3
    iget-object v4, v0, Ly4/b$c;->g:[B

    const/4 v5, 0x1

    new-array v6, v5, [La4/m;

    .line 4
    new-instance v15, La4/m;

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    move v8, v14

    .line 6
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_0

    .line 7
    aget-byte v9, v4, v8

    int-to-char v9, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "<KID>"

    .line 9
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    add-int/2addr v7, v8

    const-string v9, "</KID>"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 10
    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 12
    invoke-static {v11}, Ly4/b$c;->n([B)V

    .line 13
    aget-byte v4, v11, v5

    const/4 v7, 0x2

    .line 14
    aget-byte v9, v11, v7

    aput-byte v9, v11, v5

    .line 15
    aput-byte v4, v11, v7

    const/4 v4, 0x4

    .line 16
    aget-byte v5, v11, v4

    .line 17
    aget-byte v7, v11, v8

    aput-byte v7, v11, v4

    .line 18
    aput-byte v5, v11, v8

    const/4 v4, 0x6

    const/4 v5, 0x7

    .line 19
    aget-byte v7, v11, v4

    .line 20
    aget-byte v8, v11, v5

    aput-byte v8, v11, v4

    .line 21
    aput-byte v7, v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object v7, v15

    move v5, v14

    move-object v14, v4

    .line 22
    invoke-direct/range {v7 .. v14}, La4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    aput-object v15, v6, v5

    .line 23
    invoke-direct {v1, v2, v3, v6}, Ly4/a$a;-><init>(Ljava/util/UUID;[B[La4/m;)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ly4/b$c;->e:Z

    :cond_0
    return-void
.end method

.method public final k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProtectionHeader"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly4/b$c;->e:Z

    const/4 v1, 0x0

    const-string v2, "SystemID"

    .line 3
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Ly4/b$c;->f:Ljava/util/UUID;

    :cond_1
    return-void
.end method

.method public final l(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly4/b$c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Ly4/b$c;->g:[B

    :cond_0
    return-void
.end method
