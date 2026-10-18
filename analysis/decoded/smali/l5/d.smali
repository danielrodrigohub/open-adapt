.class public final synthetic Ll5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ll5/e$a$a$a;

.field public final synthetic i:I

.field public final synthetic j:J

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(Ll5/e$a$a$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5/d;->h:Ll5/e$a$a$a;

    iput p2, p0, Ll5/d;->i:I

    iput-wide p3, p0, Ll5/d;->j:J

    iput-wide p5, p0, Ll5/d;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ll5/d;->h:Ll5/e$a$a$a;

    iget v2, p0, Ll5/d;->i:I

    iget-wide v3, p0, Ll5/d;->j:J

    iget-wide v5, p0, Ll5/d;->k:J

    .line 1
    iget-object v1, v0, Ll5/e$a$a$a;->b:Ll5/e$a;

    .line 2
    invoke-interface/range {v1 .. v6}, Ll5/e$a;->X(IJJ)V

    return-void
.end method
