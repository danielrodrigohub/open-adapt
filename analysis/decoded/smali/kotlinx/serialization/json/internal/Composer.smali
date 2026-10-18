.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "Composers.kt"


# instance fields
.field public final json:Lkotlinx/serialization/json/Json;

.field private level:I

.field public final sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonStringBuilder;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "sb"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return v0
.end method

.method public final indent()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 2
    iget v1, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    return-void
.end method

.method public final nextItem()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\n"

    .line 3
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrintIndent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public print(B)V
    .locals 3

    .line 5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(J)V

    return-void
.end method

.method public final print(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(C)V

    return-void
.end method

.method public print(D)V
    .locals 1

    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public print(F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(J)V

    return-void
.end method

.method public print(J)V
    .locals 1

    .line 8
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(J)V

    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public print(S)V
    .locals 3

    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(J)V

    return-void
.end method

.method public print(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public final printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->sb:Lkotlinx/serialization/json/internal/JsonStringBuilder;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->appendQuoted(Ljava/lang/String;)V

    return-void
.end method

.method public final space()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_0
    return-void
.end method

.method public final unIndent()V
    .locals 1

    iget v0, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/Composer;->level:I

    return-void
.end method
