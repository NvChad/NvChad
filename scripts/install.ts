

const SRC=new URL("../",import.meta.url).pathname;
const DEST=`${Deno.env.get("HOME")}/.config/nvim`;

async function main() {
  await run(`rm -rf ${DEST}`);
  await run(`git clone ${SRC} ${DEST}`);
}

async function run(cmd: string) {
  // deno-lint-ignore no-deprecated-deno-api
  const process=Deno.run({
    cmd: cmd.split(" "),
    stdout: "piped"
  });
  console.log(process.stdout);

  return (await process.status()).code;
}


if(import.meta.main) await main();
