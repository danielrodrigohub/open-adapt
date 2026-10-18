.class public final Ln3/y0$b;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Ln3/y0$c$a;

.field public e:Ln3/y0$e$a;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Ln3/y0$k;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;

.field public j:Ln3/a1;

.field public k:Ln3/y0$f$a;

.field public l:Ln3/y0$i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y0$c$a;

    invoke-direct {v0}, Ln3/y0$c$a;-><init>()V

    iput-object v0, p0, Ln3/y0$b;->d:Ln3/y0$c$a;

    .line 3
    new-instance v0, Ln3/y0$e$a;

    invoke-direct {v0}, Ln3/y0$e$a;-><init>()V

    iput-object v0, p0, Ln3/y0$b;->e:Ln3/y0$e$a;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln3/y0$b;->f:Ljava/util/List;

    .line 5
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    .line 6
    iput-object v0, p0, Ln3/y0$b;->h:Lu6/v;

    .line 7
    new-instance v0, Ln3/y0$f$a;

    invoke-direct {v0}, Ln3/y0$f$a;-><init>()V

    iput-object v0, p0, Ln3/y0$b;->k:Ln3/y0$f$a;

    .line 8
    sget-object v0, Ln3/y0$i;->k:Ln3/y0$i;

    iput-object v0, p0, Ln3/y0$b;->l:Ln3/y0$i;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y0$b;->e:Ln3/y0$e$a;

    .line 2
    iget-object v2, v1, Ln3/y0$e$a;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, v1, Ln3/y0$e$a;->a:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 5
    iget-object v3, v0, Ln3/y0$b;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    .line 6
    new-instance v10, Ln3/y0$h;

    iget-object v4, v0, Ln3/y0$b;->c:Ljava/lang/String;

    .line 7
    iget-object v2, v0, Ln3/y0$b;->e:Ln3/y0$e$a;

    .line 8
    iget-object v5, v2, Ln3/y0$e$a;->a:Ljava/util/UUID;

    if-eqz v5, :cond_2

    .line 9
    new-instance v1, Ln3/y0$e;

    invoke-direct {v1, v2}, Ln3/y0$e;-><init>(Ln3/y0$e$a;)V

    :cond_2
    move-object v5, v1

    .line 10
    iget-object v6, v0, Ln3/y0$b;->f:Ljava/util/List;

    iget-object v7, v0, Ln3/y0$b;->g:Ljava/lang/String;

    iget-object v8, v0, Ln3/y0$b;->h:Lu6/v;

    iget-object v9, v0, Ln3/y0$b;->i:Ljava/lang/Object;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ln3/y0$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Ln3/y0$e;Ljava/util/List;Ljava/lang/String;Lu6/v;Ljava/lang/Object;)V

    move-object v14, v10

    goto :goto_2

    :cond_3
    move-object v14, v1

    .line 11
    :goto_2
    new-instance v1, Ln3/y0;

    .line 12
    iget-object v2, v0, Ln3/y0$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    move-object v12, v2

    iget-object v2, v0, Ln3/y0$b;->d:Ln3/y0$c$a;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v13, Ln3/y0$d;

    invoke-direct {v13, v2}, Ln3/y0$d;-><init>(Ln3/y0$c$a;)V

    .line 15
    iget-object v2, v0, Ln3/y0$b;->k:Ln3/y0$f$a;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v15, Ln3/y0$f;

    invoke-direct {v15, v2}, Ln3/y0$f;-><init>(Ln3/y0$f$a;)V

    .line 18
    iget-object v2, v0, Ln3/y0$b;->j:Ln3/a1;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget-object v2, Ln3/a1;->N:Ln3/a1;

    :goto_4
    move-object/from16 v16, v2

    iget-object v2, v0, Ln3/y0$b;->l:Ln3/y0$i;

    const/16 v18, 0x0

    move-object v11, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Ln3/y0;-><init>(Ljava/lang/String;Ln3/y0$d;Ln3/y0$h;Ln3/y0$f;Ln3/a1;Ln3/y0$i;Ln3/y0$a;)V

    return-object v1
.end method
