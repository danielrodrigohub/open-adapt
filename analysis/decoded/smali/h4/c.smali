.class public final Lh4/c;
.super Ljava/lang/Object;
.source "EventMessageEncoder.java"


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final b:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lh4/c;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public final a(Lh4/a;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lh4/c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    iget-object v1, p1, Lh4/a;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5
    iget-object v0, p1, Lh4/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 6
    :goto_0
    iget-object v2, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    .line 7
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    iget-object v0, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lh4/a;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 10
    iget-object v0, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Lh4/a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 11
    iget-object v0, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    iget-object p1, p1, Lh4/a;->l:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 12
    iget-object p1, p0, Lh4/c;->b:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 13
    iget-object p1, p0, Lh4/c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
